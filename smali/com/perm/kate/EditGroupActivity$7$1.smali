.class Lcom/perm/kate/EditGroupActivity$7$1;
.super Ljava/lang/Object;
.source "EditGroupActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditGroupActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/EditGroupActivity$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupActivity$7;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 430
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object p1, p1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    .line 431
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object p1, p1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/perm/kate/EditGroupActivity;->access$1202(Lcom/perm/kate/EditGroupActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object p1, p1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object p1

    add-int/lit16 p2, p2, -0x76c

    invoke-virtual {p1, p2}, Ljava/util/Date;->setYear(I)V

    .line 433
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object p1, p1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/Date;->setMonth(I)V

    .line 434
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object p1, p1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/Date;->setDate(I)V

    .line 435
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "dd.MM.yyyy"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 436
    iget-object p2, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object p2, p2, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/perm/kate/EditGroupActivity;->access$1302(Lcom/perm/kate/EditGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object p1, p1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$1400(Lcom/perm/kate/EditGroupActivity;)V

    return-void
.end method
