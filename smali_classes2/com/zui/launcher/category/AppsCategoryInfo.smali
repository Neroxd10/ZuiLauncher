.class public Lcom/zui/launcher/category/AppsCategoryInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CATEGORY_FENLEI:Ljava/lang/String; = "SmartFolder"

.field public static final DEFAULT_INDEX_OF_DB:[Ljava/lang/String;

.field public static final EVENT_NEW_FENLEIPANEL_SHOW:Ljava/lang/String; = "popofnew"

.field public static final EVENT_NEW_FENLEI_ITEMS_SELECTED:Ljava/lang/String; = "selectallofnew"

.field public static final EVENT_NEW_FOLDER_FEILEI:Ljava/lang/String; = "newfolder"

.field public static final EVENT_OPEN_FENLEIPANEL_SHOW:Ljava/lang/String; = "popoffolder"

.field public static final EVENT_OPEN_FENLEI_ITEMS_SELECTED:Ljava/lang/String; = "selectalloffolder"

.field public static final LABEL_NEW_FOLDER:Ljava/lang/String; = "newfolder"

.field public static final LABEL_OPEN_FOLDER:Ljava/lang/String; = "openfolder"

.field public static final REAPER_INDEX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "\u6e38\u620f"

    const-string v1, "\u804a\u5929\u793e\u4ea4"

    const-string v2, "\u65b0\u95fb\u9605\u8bfb"

    const-string v3, "\u5b9e\u7528\u5de5\u5177"

    const-string v4, "\u7406\u8d22\u91d1\u878d"

    const-string v5, "\u97f3\u4e50\u94c3\u58f0"

    const-string v6, "\u8003\u8bd5\u5b66\u4e60"

    const-string v7, "\u751f\u6d3b\u670d\u52a1"

    const-string v8, "\u62cd\u6444\u7f8e\u56fe"

    const-string v9, "\u5f71\u89c6\u89c6\u9891"

    const-string v10, "\u8fd0\u52a8\u5065\u5eb7"

    const-string v11, "\u5730\u56fe\u51fa\u884c"

    const-string v12, "\u8d2d\u7269"

    const-string v13, "\u6bcd\u5a74\u513f\u7ae5"

    const-string v14, "\u7cfb\u7edf\u5de5\u5177"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/category/AppsCategoryInfo;->DEFAULT_INDEX_OF_DB:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/launcher/category/AppsCategoryInfo;->REAPER_INDEX:[I

    return-void

    :array_0
    .array-data 4
        0xf
        0x4
        0x3
        0x9
        0x8
        0x2
        0xc
        0x6
        0xd
        0x1
        0xa
        0x7
        0x5
        0xb
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
