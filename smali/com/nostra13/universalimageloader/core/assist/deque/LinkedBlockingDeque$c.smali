.class Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;
.super Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<",
        "TE;>.b;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;->e:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$b;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method b()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;->e:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->b:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e;

    return-object p0
.end method

.method c(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e<",
            "TE;>;)",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e;->b:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$e;

    return-object p0
.end method
