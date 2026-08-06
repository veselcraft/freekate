.class Lcom/perm/kate/WallFragment$11;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallFragment;->showDatePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 628
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 629
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 631
    .local v2, "unixtime":J
    iget-object v1, p0, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v1, v2, v3}, Lcom/perm/kate/WallFragment;->access$800(Lcom/perm/kate/WallFragment;J)V

    goto :goto_0
.end method
