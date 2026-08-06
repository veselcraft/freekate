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
    .param p1, "this$1"    # Lcom/perm/kate/EditGroupActivity$7;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 430
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object v1, v1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object v1, v1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Lcom/perm/kate/EditGroupActivity;->access$1202(Lcom/perm/kate/EditGroupActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object v1, v1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v1

    add-int/lit16 v2, p2, -0x76c

    invoke-virtual {v1, v2}, Ljava/util/Date;->setYear(I)V

    .line 433
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object v1, v1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Date;->setMonth(I)V

    .line 434
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object v1, v1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/util/Date;->setDate(I)V

    .line 435
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "df":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object v1, v1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object v2, v2, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v2}, Lcom/perm/kate/EditGroupActivity;->access$1200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/EditGroupActivity;->access$1302(Lcom/perm/kate/EditGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$7$1;->this$1:Lcom/perm/kate/EditGroupActivity$7;

    iget-object v1, v1, Lcom/perm/kate/EditGroupActivity$7;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupActivity;->access$1400(Lcom/perm/kate/EditGroupActivity;)V

    .line 438
    return-void
.end method
