#include <cmath>
#include <iostream>
using namespace std;
float getEffectiveArea(float abseta) {
    if(abseta < 1.0) {
        return 0.1440;
    }
    else if(abseta < 1.479) {
        return 0.1562;
    }
    else if(abseta < 2.0) {
        return 0.1032;
    }
    else if(abseta < 2.2) {
        return 0.0859;
    }
    else if(abseta < 2.3) {
        return 0.1116;
    }
    else if(abseta < 2.4) {
        return 0.1321;
    }
    else {
        return 0.1654;
    }
}
//int main() {
//    float eta = -1.2;
//    float EA = getEffectiveArea(eta);
//    cout << "Effective area: " << EA << endl;
//    return 0;
//}
