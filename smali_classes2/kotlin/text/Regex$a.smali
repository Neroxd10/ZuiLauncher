.class final Lkotlin/text/Regex$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/Regex;->findAll(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/text/MatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/text/Regex;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/Regex$a;->a:Lkotlin/text/Regex;

    iput-object p2, p0, Lkotlin/text/Regex$a;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/Regex$a;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/text/MatchResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/text/Regex$a;->a:Lkotlin/text/Regex;

    iget-object v1, p0, Lkotlin/text/Regex$a;->b:Ljava/lang/CharSequence;

    iget p0, p0, Lkotlin/text/Regex$a;->c:I

    invoke-virtual {v0, v1, p0}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/text/Regex$a;->a()Lkotlin/text/MatchResult;

    move-result-object p0

    return-object p0
.end method
