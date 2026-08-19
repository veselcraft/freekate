.class Lcom/perm/utils/RepostHelper$2;
.super Ljava/lang/Object;
.source "RepostHelper.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic this$0:Lcom/perm/utils/RepostHelper;

.field final synthetic val$date_button:Landroid/widget/Button;

.field final synthetic val$time_button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    iput-object p2, p0, Lcom/perm/utils/RepostHelper$2;->val$date_button:Landroid/widget/Button;

    iput-object p3, p0, Lcom/perm/utils/RepostHelper$2;->val$time_button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {p1}, Lcom/perm/utils/RepostHelper;->access$000(Lcom/perm/utils/RepostHelper;)Ljava/util/Date;

    move-result-object p1

    add-int/lit16 p2, p2, -0x76c

    invoke-virtual {p1, p2}, Ljava/util/Date;->setYear(I)V

    .line 87
    iget-object p1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {p1}, Lcom/perm/utils/RepostHelper;->access$000(Lcom/perm/utils/RepostHelper;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/Date;->setMonth(I)V

    .line 88
    iget-object p1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {p1}, Lcom/perm/utils/RepostHelper;->access$000(Lcom/perm/utils/RepostHelper;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/Date;->setDate(I)V

    .line 89
    iget-object p1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object p2, p0, Lcom/perm/utils/RepostHelper$2;->val$date_button:Landroid/widget/Button;

    iget-object p3, p0, Lcom/perm/utils/RepostHelper$2;->val$time_button:Landroid/widget/Button;

    invoke-static {p1, p2, p3}, Lcom/perm/utils/RepostHelper;->access$400(Lcom/perm/utils/RepostHelper;Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method
