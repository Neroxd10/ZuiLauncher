.class Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/CircularBorderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircularBorderState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/CircularBorderDrawable;


# direct methods
.method private constructor <init>(Lcom/google/android/material/internal/CircularBorderDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;->this$0:Lcom/google/android/material/internal/CircularBorderDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/internal/CircularBorderDrawable;Lcom/google/android/material/internal/CircularBorderDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;-><init>(Lcom/google/android/material/internal/CircularBorderDrawable;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/internal/CircularBorderDrawable$CircularBorderState;->this$0:Lcom/google/android/material/internal/CircularBorderDrawable;

    return-object p0
.end method
