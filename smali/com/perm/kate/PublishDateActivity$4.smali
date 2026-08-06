.class Lcom/perm/kate/PublishDateActivity$4;
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
    .line 130
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 134
    .local v6, "c":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v0}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 135
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 136
    .local v3, "hour":I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 137
    .local v4, "minute":I
    new-instance v2, Lcom/perm/kate/PublishDateActivity$4$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/PublishDateActivity$4$1;-><init>(Lcom/perm/kate/PublishDateActivity$4;)V

    .line 147
    .local v2, "callback":Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    iget-object v5, p0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 148
    return-void
.end method
