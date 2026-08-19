.class Lcom/perm/kate/PollCreateActivity$10;
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

    .line 281
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$10;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity$10;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PollCreateActivity;->access$2200(Lcom/perm/kate/PollCreateActivity;Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method
