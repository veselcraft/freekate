.class Lcom/perm/kate/ProfileFragment$40;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1657
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$40;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1660
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$40;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$4500(Lcom/perm/kate/ProfileFragment;)V

    .line 1661
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$40;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v0, "additional_info"

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$2100(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    return-void
.end method
