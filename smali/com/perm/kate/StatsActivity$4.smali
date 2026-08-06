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
    .param p1, "this$0"    # Lcom/perm/kate/StatsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/StatsActivity;->showProgressBar(Z)V

    .line 212
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/StatsActivity;->access$600(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V

    .line 213
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/StatsActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 205
    check-cast v0, Ljava/util/ArrayList;

    .line 206
    .local v0, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PeriodStats;>;"
    iget-object v1, p0, Lcom/perm/kate/StatsActivity$4;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/StatsActivity;->access$600(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V

    .line 207
    return-void
.end method
