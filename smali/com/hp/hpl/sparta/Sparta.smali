.class public Lcom/hp/hpl/sparta/Sparta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/hpl/sparta/Sparta$a;,
        Lcom/hp/hpl/sparta/Sparta$CacheFactory;,
        Lcom/hp/hpl/sparta/Sparta$Cache;,
        Lcom/hp/hpl/sparta/Sparta$Internment;
    }
.end annotation


# static fields
.field private static a:Lcom/hp/hpl/sparta/Sparta$Internment;

.field private static b:Lcom/hp/hpl/sparta/Sparta$CacheFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hp/hpl/sparta/h;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/h;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/Sparta;->a:Lcom/hp/hpl/sparta/Sparta$Internment;

    new-instance v0, Lcom/hp/hpl/sparta/i;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/i;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/Sparta;->b:Lcom/hp/hpl/sparta/Sparta$CacheFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/hp/hpl/sparta/Sparta$Cache;
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/Sparta;->b:Lcom/hp/hpl/sparta/Sparta$CacheFactory;

    invoke-interface {v0}, Lcom/hp/hpl/sparta/Sparta$CacheFactory;->create()Lcom/hp/hpl/sparta/Sparta$Cache;

    move-result-object v0

    return-object v0
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/Sparta;->a:Lcom/hp/hpl/sparta/Sparta$Internment;

    invoke-interface {v0, p0}, Lcom/hp/hpl/sparta/Sparta$Internment;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCacheFactory(Lcom/hp/hpl/sparta/Sparta$CacheFactory;)V
    .locals 0

    sput-object p0, Lcom/hp/hpl/sparta/Sparta;->b:Lcom/hp/hpl/sparta/Sparta$CacheFactory;

    return-void
.end method

.method public static setInternment(Lcom/hp/hpl/sparta/Sparta$Internment;)V
    .locals 0

    sput-object p0, Lcom/hp/hpl/sparta/Sparta;->a:Lcom/hp/hpl/sparta/Sparta$Internment;

    return-void
.end method
