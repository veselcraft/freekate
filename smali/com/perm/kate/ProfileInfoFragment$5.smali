.class Lcom/perm/kate/ProfileInfoFragment$5;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$5;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$5;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileInfoFragment;->showOptionsDialog()V

    .line 529
    return-void
.end method
