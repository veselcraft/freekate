.class Lcom/perm/kate/PollCreateActivity$4;
.super Ljava/lang/Object;
.source "PollCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollCreateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$4;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity$4;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v0}, Lcom/perm/kate/PollCreateActivity;->access$1500(Lcom/perm/kate/PollCreateActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity$4;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {v0}, Lcom/perm/kate/PollCreateActivity;->finish()V

    .line 139
    :cond_0
    return-void
.end method
