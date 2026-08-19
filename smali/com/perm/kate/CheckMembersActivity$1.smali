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

    .line 67
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$1;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity$1;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {p1}, Lcom/perm/kate/CheckMembersActivity;->access$000(Lcom/perm/kate/CheckMembersActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
