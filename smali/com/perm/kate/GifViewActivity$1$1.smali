.class Lcom/perm/kate/GifViewActivity$1$1;
.super Lcom/perm/kate/session/Callback;
.source "GifViewActivity.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GifViewActivity$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity$1;Landroid/app/Activity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object p1, p1, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 126
    invoke-static {}, Lcom/perm/kate/GifViewActivity;->access$100()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v0, v0, Lcom/perm/kate/GifViewActivity$1;->val$doc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object p1, p1, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {p1}, Lcom/perm/kate/GifViewActivity;->access$200(Lcom/perm/kate/GifViewActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v0, v0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 112
    check-cast p1, Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "docs.size()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Kate.GifViewActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v0, v0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Document;

    iget-object p1, p1, Lcom/perm/kate/api/Document;->video:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/GifViewActivity;->access$002(Lcom/perm/kate/GifViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "video="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v0, v0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v0}, Lcom/perm/kate/GifViewActivity;->access$000(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/perm/kate/GifViewActivity;->access$100()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object v1, v0, Lcom/perm/kate/GifViewActivity$1;->val$doc:Ljava/lang/String;

    iget-object v0, v0, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v0}, Lcom/perm/kate/GifViewActivity;->access$000(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity$1$1;->this$1:Lcom/perm/kate/GifViewActivity$1;

    iget-object p1, p1, Lcom/perm/kate/GifViewActivity$1;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {p1}, Lcom/perm/kate/GifViewActivity;->access$200(Lcom/perm/kate/GifViewActivity;)V

    return-void
.end method
