.class Lcom/perm/kate/RequestsToGroupActivity$8;
.super Lcom/perm/kate/session/Callback;
.source "RequestsToGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/RequestsToGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupActivity;Landroid/app/Activity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$8;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 216
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 217
    iget-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$8;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$602(Lcom/perm/kate/RequestsToGroupActivity;I)I

    .line 218
    iget-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$8;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity$8;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 204
    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    .line 205
    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$300(Lcom/perm/kate/RequestsToGroupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity$8;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$300(Lcom/perm/kate/RequestsToGroupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/RequestsToGroupActivity;->access$400(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)V

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 208
    iget-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$8;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$602(Lcom/perm/kate/RequestsToGroupActivity;I)I

    goto :goto_0

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$8;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/RequestsToGroupActivity;->access$602(Lcom/perm/kate/RequestsToGroupActivity;I)I

    .line 211
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$8;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
