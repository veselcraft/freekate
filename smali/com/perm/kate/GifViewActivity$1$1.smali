.class Lcom/perm/kate/GifViewActivity$1$1;
.super Lcom/perm/kate/session/Callback;
.source "GifViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifViewActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GifViewActivity$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity$1;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/GifViewActivity$1;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v0, v0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GifViewActivity;->showProgressBar(Z)V

    .line 127
    invoke-static {}, Lcom/perm/kate/GifViewActivity;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v1, v1, Lcom/perm/kate/GifViewActivity$1;->val$doc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v0, v0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v0}, Lcom/perm/kate/GifViewActivity;->access$200(Lcom/perm/kate/GifViewActivity;)V

    .line 129
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v1, v1, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-virtual {v1, v4}, Lcom/perm/kate/GifViewActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 113
    check-cast v0, Ljava/util/ArrayList;

    .line 114
    .local v0, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    const-string v1, "Kate.GifViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "docs.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v2, v1, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Document;

    iget-object v1, v1, Lcom/perm/kate/api/Document;->video:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/perm/kate/GifViewActivity;->access$002(Lcom/perm/kate/GifViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    :cond_0
    const-string v1, "Kate.GifViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v3, v3, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v3}, Lcom/perm/kate/GifViewActivity;->access$000(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lcom/perm/kate/GifViewActivity;->access$100()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v2, v2, Lcom/perm/kate/GifViewActivity$1;->val$doc:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v3, v3, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v3}, Lcom/perm/kate/GifViewActivity;->access$000(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v1, v1, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v1}, Lcom/perm/kate/GifViewActivity;->access$200(Lcom/perm/kate/GifViewActivity;)V

    .line 121
    return-void
.end method
