.class Lcom/perm/kate/NewsFragment$5$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewsFragment$5;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment$5;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$5$1;->this$1:Lcom/perm/kate/NewsFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$5$1;->this$1:Lcom/perm/kate/NewsFragment$5;

    iget-object v1, v0, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment$5;->val$ns:Lcom/perm/kate/api/Newsfeed;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/perm/kate/NewsFragment;->access$200(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;Z)V

    const/16 v0, 0x8

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$5$1;->this$1:Lcom/perm/kate/NewsFragment$5;

    iget-object p1, p1, Lcom/perm/kate/NewsFragment$5;->this$0:Lcom/perm/kate/NewsFragment;

    const-string v0, "SNACK_CLICK"

    invoke-static {p1, v0}, Lcom/perm/kate/NewsFragment;->access$400(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)V

    return-void
.end method
