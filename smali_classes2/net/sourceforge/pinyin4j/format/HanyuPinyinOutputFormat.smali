.class public final Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

.field private b:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

.field private c:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->restoreDefault()V

    return-void
.end method


# virtual methods
.method public getCaseType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;
    .locals 0

    iget-object p0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->b:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    return-object p0
.end method

.method public getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;
    .locals 0

    iget-object p0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->c:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    return-object p0
.end method

.method public getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;
    .locals 0

    iget-object p0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->a:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    return-object p0
.end method

.method public restoreDefault()V
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->a:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->b:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_NUMBER:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->c:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    return-void
.end method

.method public setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->b:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    return-void
.end method

.method public setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->c:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    return-void
.end method

.method public setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->a:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    return-void
.end method
