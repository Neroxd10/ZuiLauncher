.class public final synthetic Lcom/zui/quickstep/util/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/util/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/util/n;

    invoke-direct {v0}, Lcom/zui/quickstep/util/n;-><init>()V

    sput-object v0, Lcom/zui/quickstep/util/n;->a:Lcom/zui/quickstep/util/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/zui/quickstep/util/ImageActionUtils;->c(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
