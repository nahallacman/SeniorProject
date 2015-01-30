#include <stdio.h>
#include <iostream>
using namespace std;

struct HexCharStruct
{
	unsigned char c;
	HexCharStruct(unsigned char _c) : c(_c) { }
};

inline std::ostream& operator<<(std::ostream& o, const HexCharStruct& hs)
{
	return (o << std::hex << (int)hs.c);
}

inline HexCharStruct hex(unsigned char _c)
{
	return HexCharStruct(_c);
}

int main(void)
{
	char original = 0x55;
	char compare = 0xaa;
	char inverted = 0;

	for (int i = 0; i < 8; i++)
	{
		if ((original >> i) & 1)
		{
			inverted |= 1 << (7 - i);
		}
	}

	cout << "original character: " << original  << " inverted character:" << inverted << endl;
	cout << "original in hex: " << hex(original) << "inverted in hex: " << hex(inverted) << endl;
	return 0;
}