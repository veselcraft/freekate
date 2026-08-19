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

    .line 133
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v0}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    .line 138
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xc

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 140
    new-instance v3, Lcom/perm/kate/PublishDateActivity$4$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/PublishDateActivity$4$1;-><init>(Lcom/perm/kate/PublishDateActivity$4;)V

    .line 150
    new-instance p1, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/perm/kate/PublishDateActivity$4;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
