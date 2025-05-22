.class Lnet/sourceforge/pinyin4j/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/pinyin4j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lnet/sourceforge/pinyin4j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/b;-><init>(Lnet/sourceforge/pinyin4j/a;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/b$a;->a:Lnet/sourceforge/pinyin4j/b;

    return-void
.end method
