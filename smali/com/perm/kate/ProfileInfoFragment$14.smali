.class Lcom/perm/kate/ProfileInfoFragment$14;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$14;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 873
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$14;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$1200(Lcom/perm/kate/ProfileInfoFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 874
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$14;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$1300(Lcom/perm/kate/ProfileInfoFragment;)V

    goto :goto_0

    .line 876
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$14;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$1400(Lcom/perm/kate/ProfileInfoFragment;)V

    :goto_0
    return-void
.end method
