.class Lcom/perm/kate/ProfileLeftFragment$6;
.super Ljava/lang/Object;
.source "ProfileLeftFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$6;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$6;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v0, v0, Lcom/perm/kate/ProfileLeftFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    const-string v1, "friends"

    invoke-interface {v0, v1}, Lcom/perm/kate/ProfileActivityCallback;->onTabSelected(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$6;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/ProfileLeftFragment;->setActivePaneButton(Landroid/view/View;)V

    return-void
.end method
