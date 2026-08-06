.class Lcom/perm/kate/EditProfileActivity$8$1;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/EditProfileActivity$8;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/EditProfileActivity$8;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$8$1;->this$1:Lcom/perm/kate/EditProfileActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "Year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$8$1;->this$1:Lcom/perm/kate/EditProfileActivity$8;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$902(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 382
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$8$1;->this$1:Lcom/perm/kate/EditProfileActivity$8;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    add-int/lit8 v1, p3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$1002(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 383
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$8$1;->this$1:Lcom/perm/kate/EditProfileActivity$8;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$1102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 384
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$8$1;->this$1:Lcom/perm/kate/EditProfileActivity$8;

    iget-object v0, v0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$1200(Lcom/perm/kate/EditProfileActivity;)V

    .line 385
    return-void
.end method
