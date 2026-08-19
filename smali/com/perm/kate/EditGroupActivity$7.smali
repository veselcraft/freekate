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

    .line 416
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 420
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    const/4 v0, 0x1

    .line 422
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x2

    .line 423
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x5

    .line 424
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 425
    new-instance v3, Lcom/perm/kate/EditGroupActivity$7$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/EditGroupActivity$7$1;-><init>(Lcom/perm/kate/EditGroupActivity$7;)V

    .line 440
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
