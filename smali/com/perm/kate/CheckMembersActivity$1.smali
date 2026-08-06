.class Lcom/perm/kate/CheckMembersActivity$1;
.super Ljava/lang/Object;
.source "CheckMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CheckMembersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CheckMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CheckMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$1;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$1;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/CheckMembersActivity;->access$000(Lcom/perm/kate/CheckMembersActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
