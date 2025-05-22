.class public Lcom/zui/timelaweather/util/LunarChinaCalendar;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final f:[Ljava/lang/String;

.field static final g:[Ljava/lang/String;

.field static h:Ljava/text/SimpleDateFormat;

.field static final i:[J

.field private static j:Lcom/zui/timelaweather/util/LunarChinaCalendar;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\u4e00"

    const-string v1, "\u4e8c"

    const-string v2, "\u4e09"

    const-string v3, "\u56db"

    const-string v4, "\u4e94"

    const-string v5, "\u516d"

    const-string v6, "\u4e03"

    const-string v7, "\u516b"

    const-string v8, "\u4e5d"

    const-string v9, "\u5341"

    const-string v10, "\u5341\u4e00"

    const-string v11, "\u5341\u4e8c"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->f:[Ljava/lang/String;

    const-string v1, "\u5927"

    const-string v2, "\u5c0f"

    const-string v3, "\u5927"

    const-string v4, "\u5c0f"

    const-string v5, "\u5927"

    const-string v6, "\u5c0f"

    const-string v7, "\u5927"

    const-string v8, "\u5927"

    const-string v9, "\u5c0f"

    const-string v10, "\u5927"

    const-string v11, "\u5c0f"

    const-string v12, "\u5927"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->g:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " yyyy\u5e74MM\u6708dd\u65e5 "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->h:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->i:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(I)Ljava/lang/String;
    .locals 13

    const-string v0, "\u7532"

    const-string v1, "\u4e59"

    const-string v2, "\u4e19"

    const-string v3, "\u4e01"

    const-string v4, "\u620a"

    const-string v5, "\u5df1"

    const-string v6, "\u5e9a"

    const-string v7, "\u8f9b"

    const-string v8, "\u58ec"

    const-string v9, "\u7678"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5b50"

    const-string v2, "\u4e11"

    const-string v3, "\u5bc5"

    const-string v4, "\u536f"

    const-string v5, "\u8fb0"

    const-string v6, "\u5df3"

    const-string v7, "\u5348"

    const-string v8, "\u672a"

    const-string v9, "\u7533"

    const-string v10, "\u9149"

    const-string v11, "\u620c"

    const-string v12, "\u4ea5"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p0, 0xa

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0xc

    aget-object p0, v1, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->h:Ljava/text/SimpleDateFormat;

    const-string v1, " 1900\u5e741\u670831\u65e5 "

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->e:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v0, v1

    const/16 v1, 0x76c

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v4, 0x802

    if-ge v1, v4, :cond_0

    if-lez v0, :cond_0

    invoke-static {v1}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->f(I)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-gez v0, :cond_1

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    :cond_1
    iput v1, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->a:I

    invoke-static {v1}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d(I)I

    move-result v1

    iput-boolean v2, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    const/4 v3, 0x1

    move v5, v2

    move v4, v3

    :goto_2
    const/16 v6, 0xd

    if-ge v4, v6, :cond_4

    if-lez v0, :cond_4

    if-lez v1, :cond_2

    add-int/lit8 v5, v1, 0x1

    if-ne v4, v5, :cond_2

    iget-boolean v5, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    iput-boolean v3, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    iget v5, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->a:I

    invoke-static {v5}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->c(I)I

    move-result v5

    goto :goto_3

    :cond_2
    iget v5, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->a:I

    invoke-static {v5, v4}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->e(II)I

    move-result v5

    :goto_3
    sub-int/2addr v0, v5

    iget-boolean v6, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    if-eqz v6, :cond_3

    add-int/lit8 v6, v1, 0x1

    if-ne v4, v6, :cond_3

    iput-boolean v2, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    :cond_3
    iget-boolean v6, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    if-lez v1, :cond_6

    add-int/2addr v1, v3

    if-ne v4, v1, :cond_6

    iget-boolean v1, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    goto :goto_4

    :cond_5
    iput-boolean v3, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    add-int/lit8 v4, v4, -0x1

    :cond_6
    :goto_4
    if-gez v0, :cond_7

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, -0x1

    :cond_7
    iput v4, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->c:I

    return-void
.end method

.method private static final c(I)I
    .locals 4

    invoke-static {p0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->i:[J

    add-int/lit16 p0, p0, -0x76c

    aget-wide v0, v0, p0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    return p0

    :cond_0
    const/16 p0, 0x1d

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static final d(I)I
    .locals 4

    sget-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->i:[J

    add-int/lit16 p0, p0, -0x76c

    aget-wide v0, v0, p0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static final e(II)I
    .locals 2

    sget-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->i:[J

    add-int/lit16 p0, p0, -0x76c

    aget-wide v0, v0, p0

    const/high16 p0, 0x10000

    shr-int/2addr p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0
.end method

.method private static final f(I)I
    .locals 6

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    sget-object v2, Lcom/zui/timelaweather/util/LunarChinaCalendar;->i:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->c(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final getInstance()Lcom/zui/timelaweather/util/LunarChinaCalendar;
    .locals 1

    sget-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->j:Lcom/zui/timelaweather/util/LunarChinaCalendar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;

    invoke-direct {v0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;-><init>()V

    sput-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->j:Lcom/zui/timelaweather/util/LunarChinaCalendar;

    :cond_0
    sget-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->j:Lcom/zui/timelaweather/util/LunarChinaCalendar;

    return-object v0
.end method


# virtual methods
.method public final animalsYear()Ljava/lang/String;
    .locals 12

    const-string v0, "\u9f20"

    const-string v1, "\u725b"

    const-string v2, "\u864e"

    const-string v3, "\u5154"

    const-string v4, "\u9f99"

    const-string v5, "\u86c7"

    const-string v6, "\u9a6c"

    const-string v7, "\u7f8a"

    const-string v8, "\u7334"

    const-string v9, "\u9e21"

    const-string v10, "\u72d7"

    const-string v11, "\u732a"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->a:I

    add-int/lit8 p0, p0, -0x4

    rem-int/lit8 p0, p0, 0xc

    aget-object p0, v0, p0

    return-object p0
.end method

.method public cyclical()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->a:I

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 p0, p0, 0x24

    invoke-static {p0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChinaDayString(I)Ljava/lang/String;
    .locals 5

    const-string p0, "\u521d"

    const-string v0, "\u5341"

    const-string v1, "\u5eff"

    const-string v2, "\u5345"

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v1, p1, 0xa

    const/16 v2, 0x9

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " day ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " n ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lunar"

    invoke-static {v4, v3}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1e

    if-le p1, v3, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/16 v3, 0xa

    if-ne p1, v3, :cond_2

    const-string p0, "\u521d\u5341"

    return-object p0

    :cond_2
    if-ne v1, v2, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    :cond_3
    aget-object p0, p0, v0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->f:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFullDate()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->cyclical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->get_month()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->get_date()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get_Big_Or_Small()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->g:[Ljava/lang/String;

    iget p0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->b:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public get_date()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->c:I

    invoke-virtual {p0, v0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get_leap()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    if-eqz p0, :cond_0

    const-string p0, "\u95f0"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public get_month()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "\u6b63"

    return-object p0

    :cond_0
    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    const-string p0, "\u814a"

    return-object p0

    :cond_1
    sget-object v1, Lcom/zui/timelaweather/util/LunarChinaCalendar;->f:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0
.end method

.method public numeric_md()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->b:I

    const-string v1, "0"

    const-string v2, ""

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v4, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->b:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->c:I

    if-ge v4, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->c:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentCalendarTime()Lcom/zui/timelaweather/util/LunarChinaCalendar;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->e:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->b()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "\u95f0"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zui/timelaweather/util/LunarChinaCalendar;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->b:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/timelaweather/util/LunarChinaCalendar;->c:I

    invoke-virtual {p0, v1}, Lcom/zui/timelaweather/util/LunarChinaCalendar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
