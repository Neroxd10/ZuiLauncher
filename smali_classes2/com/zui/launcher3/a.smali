.class public final synthetic Lcom/zui/launcher3/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher3/l;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher3/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher3/a;->a:Lcom/zui/launcher3/l;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/a;->a:Lcom/zui/launcher3/l;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher3/l;->e(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
