.class Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$2;->this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$2;->this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;

    iget-object v1, v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;

    iget v2, v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v3, v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1$2;->val$t:Ljava/lang/Throwable;

    iget-object v5, v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;->val$responseBody:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
