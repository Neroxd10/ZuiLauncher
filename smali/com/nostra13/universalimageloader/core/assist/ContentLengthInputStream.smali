.class public Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    iput p2, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->b:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    iget p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->b:I

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
