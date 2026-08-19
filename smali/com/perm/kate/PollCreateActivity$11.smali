.class Lcom/perm/kate/PollCreateActivity$11;
.super Ljava/lang/Object;
.source "PollCreateActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 322
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$11;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 325
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$11;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$2300(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 327
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$11;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$2400(Lcom/perm/kate/PollCreateActivity;)V

    .line 328
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$11;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/Helper;->hideKeyboard(Landroid/app/Activity;)V

    goto :goto_1

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$11;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/PollCreateActivity;->access$1302(Lcom/perm/kate/PollCreateActivity;Ljava/lang/Long;)Ljava/lang/Long;

    :goto_1
    return-void
.end method
