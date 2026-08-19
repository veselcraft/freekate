.class Lcom/perm/kate/PollCreateActivity$5;
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

    .line 192
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$5;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$5;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$2000(Lcom/perm/kate/PollCreateActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$5;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
