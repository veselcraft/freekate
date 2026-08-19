.class Lcom/perm/kate/EditProfileActivity$10;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 420
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$10;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 423
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$10;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/EditProfileActivity;->access$1502(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 424
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$10;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$1600(Lcom/perm/kate/EditProfileActivity;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
