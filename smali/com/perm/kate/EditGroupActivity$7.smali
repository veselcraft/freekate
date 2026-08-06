.class Lcom/perm/kate/EditGroupActivity$7;
.super Ljava/lang/Object;
.source "EditGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 420
    .local v6, "c":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 422
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 423
    .local v3, "year":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 424
    .local v4, "month":I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 425
    .local v5, "day":I
    new-instance v2, Lcom/perm/kate/EditGroupActivity$7$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/EditGroupActivity$7$1;-><init>(Lcom/perm/kate/EditGroupActivity$7;)V

    .line 440
    .local v2, "callback":Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 441
    return-void
.end method
