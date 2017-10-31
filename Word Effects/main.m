#import <Foundation/Foundation.h>

NSString* getandConvert(){
    
    char inputstr[255] = "\n";
    while (strcmp(inputstr, "\n") == 0) {fgets(inputstr,255,stdin);}
    NSString* whatever = [NSString stringWithUTF8String:inputstr];
    return whatever;}

void upperCase (NSString* whatever){
    whatever = [whatever capitalizedString];
    NSLog(@"%@",whatever);}

void lowerCase(NSString* whatever)  {
    whatever = [whatever lowercaseString];
    NSLog (@"%@",whatever);}

void numberize(NSString* whatever){
    NSInteger outputnum = [whatever integerValue];
    NSLog(@"%li",(long)outputnum);}

void canadianize(NSString* whatever){
    NSLog(@"%@, eh?",whatever);}

void deSpaceIt(NSString* whatever){
    whatever = [whatever stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    NSLog(@"%@", whatever);}


int main(int argc, const char * argv[]) {
    
    while(true){
        NSLog(@"\n\nType of Operation");
        NSLog(@"\nupperCase = 0\nlowerCase = 1\nnumberize = 2\ncandianize = 3\ndeSpaceIt = 4");
        NSInteger operation = [getandConvert() integerValue];
        NSLog(@"\n\nType something");
        NSString* inputstr = getandConvert();
        switch (operation) {
            case 0:
                upperCase(inputstr);
                break;
            case 1:
                lowerCase(inputstr);
                break;
            case 2:
                numberize(inputstr);
                break;
            case 3:
                canadianize(inputstr);
                break;
            case 4:
                deSpaceIt(inputstr);
                break;

            default:
                break;
        }
    }
    
    
    
    return 0;
}
