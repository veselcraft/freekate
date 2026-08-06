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
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 368
    const/16 v3, 0x7d0

    .line 369
    .local v3, "year":I
    const/4 v4, 0x0

    .line 370
    .local v4, "month":I
    const/4 v5, 0x1

    .line 371
    .local v5, "day":I
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    .line 372
    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    .line 373
    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$900(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 375
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1000(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    .line 376
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v1}, Lcom/perm/kate/EditProfileActivity;->access$1100(Lcom/perm/kate/EditProfileActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 378
    :cond_0
    new-instance v2, Lcom/perm/kate/EditProfileActivity$8$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/EditProfileActivity$8$1;-><init>(Lcom/perm/kate/EditProfileActivity$8;)V

    .line 387
    .local v2, "callback":Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$8;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 388
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 389
    return-void
.end method
