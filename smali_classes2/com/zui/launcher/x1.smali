.class public final synthetic Lcom/zui/launcher/x1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/x1;->a:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/x1;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/zui/launcher/LauncherProvider;->l(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    return-object p0
.end method
