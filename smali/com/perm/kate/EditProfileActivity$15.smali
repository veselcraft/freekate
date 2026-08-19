.class Lcom/perm/kate/EditProfileActivity$15;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$15;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 535
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$15;->this$0:Lcom/perm/kate/EditProfileActivity;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/EditProfileActivity;->access$2102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 536
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$15;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$2800(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0f04ac

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$15;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$2900(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
