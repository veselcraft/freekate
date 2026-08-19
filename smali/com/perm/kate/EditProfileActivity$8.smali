.class Lcom/perm/kate/EditProfileActivity$8;
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

    .line 367
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 374
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    .line 375
    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$1000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$1000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    .line 376
    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$1100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$1100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 378
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v0

    .line 379
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$1100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, p1

    move v5, v0

    move v6, v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d0

    const/4 v1, 0x0

    const/16 v5, 0x7d0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 381
    :goto_0
    new-instance v4, Lcom/perm/kate/EditProfileActivity$8$1;

    invoke-direct {v4, p0}, Lcom/perm/kate/EditProfileActivity$8$1;-><init>(Lcom/perm/kate/EditProfileActivity$8;)V

    .line 390
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 391
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
