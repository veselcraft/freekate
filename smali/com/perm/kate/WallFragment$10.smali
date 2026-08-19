.class Lcom/perm/kate/WallFragment$10;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/perm/kate/WallFragment$10;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 656
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 659
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 660
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 661
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    .line 663
    iget-object p3, p0, Lcom/perm/kate/WallFragment$10;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {p3, p1, p2}, Lcom/perm/kate/WallFragment;->access$900(Lcom/perm/kate/WallFragment;J)V

    return-void
.end method
