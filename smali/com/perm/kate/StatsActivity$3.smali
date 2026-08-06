.class Lcom/perm/kate/StatsActivity$3;
.super Ljava/lang/Thread;
.source "StatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StatsActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/StatsActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/perm/kate/StatsActivity$3;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$3;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0}, Lcom/perm/kate/StatsActivity;->access$500(Lcom/perm/kate/StatsActivity;)V

    .line 191
    return-void
.end method
