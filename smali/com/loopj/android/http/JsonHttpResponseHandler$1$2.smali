.class Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/JsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

.field final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object p0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
