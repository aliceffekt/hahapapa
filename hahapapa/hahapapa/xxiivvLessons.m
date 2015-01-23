//
//  xxiivvLessons.m
//  hahapapa
//
//  Created by Devine Lu Linvega on 2013-08-16.
//  Copyright (c) 2013 XXIIVV. All rights reserved.
//

#import "xxiivvLessons.h"

@interface Lesson ()

@end

@implementation Lesson

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)nextLesson {
	return 1;
}

-(NSArray*)lessonsList
{
    return @[@"Japanese",@"Russian",@"Greek",@"Hebrew"];
}

- (NSArray*)lessonContent :(int)lessonId
{
    
    NSString* language = [[self lessonsList] objectAtIndex:lessonId];
    
    NSLog(@"Loading lesson: %d %@",lessonId,language);
    
    if( [language isEqualToString:@"Japanese"] ){ return [self lessonJapanese]; }
    else if( [language isEqualToString:@"Russian"] ){ return [self lessonRussian]; }
    else if( [language isEqualToString:@"Greek"] ){ return [self lessonGreek]; }
    else if( [language isEqualToString:@"Hebrew"] ){ return [self lessonHebrew]; }
    return [self lessonJapanese];
}

- (NSArray*)lessonHebrew
{
    gameLessonsArray = @[
    @[@"b", @"בּ", @"בּ"],
    @[@"v", @"ב", @"ב"],
    @[@"g", @"ג", @"גּ"],
    @[@"d", @"ד", @"דּ"],
    @[@"v", @"ו", @"ו"],

    @[@"u", @"וּ", @"וּ"],
    @[@"o", @"וֹ", @"וֹ"],
    @[@"z", @"ז", @"ז"],
    @[@"x", @"ח", @"ח"],
    @[@"h", @"ה", @"ה"],

    @[@"t", @"ט", @"ט"],
    @[@"j", @"י", @"י"],
    @[@"k", @"ךּ", @"כּ"],
    @[@"ks", @"ך", @"כ"],
    @[@"l", @"ל", @"ל"],

    @[@"m", @"ם", @"מ"],
    @[@"n", @"ן", @"נ"],
    @[@"s", @"ס", @"ס"],
    @[@"p", @"פּ", @"פּ"],
    @[@"f", @"ף", @"פ"],

    @[@"ts", @"ץ", @"צ"],
    @[@"r", @"ר", @"ר"],
    @[@"th", @"ת׳", @"ת׳"]
    ];
    
    return gameLessonsArray;
}


- (NSArray*)lessonGreek
{
    gameLessonsArray = @[
    @[@"a", @"Α", @"α"],
    @[@"v", @"Β", @"β"],
    @[@"g", @"Γ", @"γ"],
    @[@"d", @"Δ", @"δ"],
    @[@"e", @"Ε", @"ε"],

    @[@"z", @"Ζ", @"ζ"],
    @[@"i", @"Η", @"η"],
    @[@"th", @"Θ", @"θ"],
    @[@"i", @"Ι", @"ι"],
    @[@"k", @"Κ", @"κ"],

    @[@"l", @"Λ", @"λ"],
    @[@"m", @"Μ", @"μ"],
    @[@"n", @"Ν", @"ν"],
    @[@"x", @"Ξ", @"ξ"],
    @[@"o", @"Ο", @"ο"],

    @[@"p", @"Π", @"π"],
    @[@"r", @"Ρ", @"ρ"],
    @[@"s", @"Σ", @"σ"],
    @[@"t", @"Τ", @"τ"],
    @[@"y", @"Υ", @"υ"],

    @[@"f", @"Φ", @"φ"],
    @[@"ch", @"Χ", @"χ"],
    @[@"ps", @"Ψ", @"ψ"],
    @[@"o", @"Ω", @"ω"]
    ];
    
    return gameLessonsArray;
}

- (NSArray*)lessonRussian{
    
    gameLessonsArray = @[
    @[@"a", @"А", @"а"],
    @[@"v", @"Б", @"б"],
    @[@"b", @"В", @"в"],
    @[@"g", @"Г", @"г"],
    @[@"d", @"Д", @"д"],

    @[@"ye", @"Е", @"е"],
    @[@"yo", @"Ё", @"ё"],
    @[@"zh", @"Ж", @"ж"],
    @[@"z", @"З", @"з"],
    @[@"i", @"И", @"и"],

    @[@"y", @"Й", @"й"],
    @[@"k", @"К", @"к"],
    @[@"l", @"Л", @"л"],
    @[@"m", @"М", @"м"],
    @[@"n", @"Н", @"н"],

    @[@"o", @"О", @"о"],
    @[@"p", @"П", @"п"],
    @[@"r", @"Р", @"р"],
    @[@"s", @"С", @"с"],
    @[@"t", @"Т", @"т"],

    @[@"u", @"У", @"у"],
    @[@"f", @"Ф", @"ф"],
    @[@"x", @"Х", @"х"],
    @[@"ts", @"Ц", @"ц"],
    @[@"ch", @"Ч", @"ч"],

    @[@"sh", @"Ш", @"ш"],
    @[@"shh", @"Щ", @"щ"],
    @[@"e", @"Э", @"э"],
    @[@"yu", @"Ю", @"ю"],
    @[@"ya", @"Я", @"я"]
    ];
    
    return gameLessonsArray;
    
}

- (NSArray*)lessonJapanese{
	
    gameLessonsArray = @[
    @[@"a", @"あ", @"ア"],
    @[@"i", @"い", @"イ"],
    @[@"u", @"う", @"ウ"],
    @[@"e", @"え", @"エ"],
    @[@"o", @"お", @"オ"],

    @[@"ka", @"か", @"カ"],
    @[@"ki", @"き", @"キ"],
    @[@"ku", @"く", @"ク"],
    @[@"ke", @"け", @"ケ"],
    @[@"ko", @"こ", @"コ"],

    @[@"sa", @"さ", @"サ"],
    @[@"shi", @"し", @"シ"],
    @[@"su", @"す", @"ス"],
    @[@"se", @"せ", @"セ"],
    @[@"so", @"そ", @"ソ"],

    @[@"ta", @"た", @"タ"],
    @[@"chi", @"ち", @"チ"],
    @[@"tsu", @"つ", @"ツ"],
    @[@"te", @"て", @"テ"],
    @[@"to", @"と", @"ト"],

    @[@"na", @"な", @"ナ"],
    @[@"ni", @"に", @"ニ"],
    @[@"nu", @"ぬ", @"ヌ"],
    @[@"ne", @"ね", @"ネ"],
    @[@"no", @"の", @"ノ"],

    @[@"ha", @"は", @"ハ"],
    @[@"hi", @"ひ", @"ヒ"],
    @[@"fu", @"ふ", @"フ"],
    @[@"he", @"へ", @"ヘ"],
    @[@"ho", @"ほ", @"ホ"],

    @[@"ma", @"ま", @"マ"],
    @[@"mi", @"み", @"ミ"],
    @[@"mu", @"む", @"ム"],
    @[@"me", @"め", @"メ"],
    @[@"mo", @"も", @"モ"],

    @[@"ya", @"や", @"ヤ"],
    @[@"yu", @"ゆ", @"ユ"],
    @[@"yo", @"よ", @"ヨ"],

    @[@"ra", @"ら", @"ラ"],
    @[@"ri", @"り", @"リ"],
    @[@"ru", @"る", @"ル"],
    @[@"re", @"れ", @"レ"],
    @[@"ro", @"ろ", @"ロ"],

    @[@"wa", @"わ", @"ワ"],
    @[@"wo", @"を", @"ヲ"],

    @[@"ga", @"が", @"ガ"],
    @[@"gi", @"ぎ", @"ギ"],
    @[@"gu", @"ぐ", @"グ"],
    @[@"ge", @"げ", @"ゲ"],
    @[@"go", @"ご", @"ゴ"],

    @[@"za", @"ざ", @"ザ"],
    @[@"ji", @"じ", @"ジ"],
    @[@"zu", @"ず", @"ズ"],
    @[@"ze", @"ぜ", @"ゼ"],
    @[@"zo", @"ぞ", @"ゾ"],

    @[@"da", @"だ", @"ダ"],
    @[@"di", @"ぢ", @"ヂ"],
    @[@"du", @"づ", @"ヅ"],
    @[@"de", @"で", @"デ"],
    @[@"do", @"ど", @"ド"],

    @[@"ba", @"ば", @"バ"],
    @[@"bi", @"び", @"ビ"],
    @[@"bu", @"ぶ", @"ブ"],
    @[@"be", @"べ", @"ベ"],
    @[@"bo", @"ぼ", @"ボ"],

    @[@"pa", @"ぱ", @"パ"],
    @[@"pi", @"ぴ", @"ピ"],
    @[@"pu", @"ぷ", @"プ"],
    @[@"pe", @"ぺ", @"ペ"],
    @[@"po", @"ぽ", @"ポ"],

    @[@"n", @"ん", @"ン"]
    ];
	
	return gameLessonsArray;

}


@end
