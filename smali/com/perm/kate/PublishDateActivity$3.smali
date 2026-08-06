.class Lcom/perm/kate/PublishDateActivity$3;
.super Ljava/lang/Object;
.source "PublishDateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PublishDateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PublishDateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PublishDateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PublishDateActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity$3;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 107
    .local v6, "c":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$3;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v0}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 109
    .local v3, "year":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 110
    .local v4, "month":I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 111
    .local v5, "day":I
    new-instance v2, Lcom/perm/kate/PublishDateActivity$3$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/PublishDateActivity$3$1;-><init>(Lcom/perm/kate/PublishDateActivity$3;)V

    .line 122
    .local v2, "callback":Landroid/app/DatePickerDialog$OnDateSetListener;
    iget-object v1, p0, Lcom/perm/kate/PublishDateActivity$3;->this$0:Lcom/perm/kate/PublishDateActivity;

    .line 124
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isBrokenSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .end local v1    # "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$3;->this$0:Lcom/perm/kate/PublishDateActivity;

    const v7, 0x1030073

    invoke-direct {v1, v0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 126
    .restart local v1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 127
    return-void
.end method
