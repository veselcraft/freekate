.class Lcom/perm/kate/MessageThreadFragment$13;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->showMessageDatePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 11
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 920
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    :goto_0
    return-void

    .line 922
    :cond_0
    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 925
    .local v7, "i":Landroid/content/Intent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "c":Ljava/util/Calendar;
    move v1, p2

    move v2, p3

    move v3, p4

    move v5, v4

    move v6, v4

    .line 926
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 927
    invoke-virtual {v0, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 928
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 929
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 930
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 932
    const-string v1, "chat_id"

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 933
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 934
    const-string v1, "date"

    const-string v2, "%02d%02d%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$13;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1, v7}, Lcom/perm/kate/MessageThreadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
