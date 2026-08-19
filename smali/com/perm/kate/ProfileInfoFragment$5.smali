.class Lcom/perm/kate/ProfileInfoFragment$5;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$5;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 540
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$5;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {p1}, Lcom/perm/kate/ProfileInfoFragment;->showOptionsDialog()V

    return-void
.end method
