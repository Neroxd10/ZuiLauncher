.class public interface abstract Lcom/hp/hpl/sparta/ParseSource;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

.field public static final MAXLOOKAHEAD:I = 0x47


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hp/hpl/sparta/b;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/b;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/ParseSource;->DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

    return-void
.end method


# virtual methods
.method public abstract getLineNumber()I
.end method

.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
