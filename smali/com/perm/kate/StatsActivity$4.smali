.class Lcom/perm/kate/StatsActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "StatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 201
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/StatsActivity;->access$500(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V

    .line 202
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 194
    check-cast p1, Ljava/util/ArrayList;

    .line 195
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/StatsActivity;->access$500(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V

    return-void
.end method
