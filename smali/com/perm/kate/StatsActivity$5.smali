.class Lcom/perm/kate/StatsActivity$5;
.super Ljava/lang/Object;
.source "StatsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StatsActivity;->diplayDataInUiThread(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatsActivity;

.field final synthetic val$stats:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/StatsActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/perm/kate/StatsActivity$5;->this$0:Lcom/perm/kate/StatsActivity;

    iput-object p2, p0, Lcom/perm/kate/StatsActivity$5;->val$stats:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$5;->this$0:Lcom/perm/kate/StatsActivity;

    iget-object v1, p0, Lcom/perm/kate/StatsActivity$5;->val$stats:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/StatsActivity;->access$700(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V

    .line 225
    return-void
.end method
