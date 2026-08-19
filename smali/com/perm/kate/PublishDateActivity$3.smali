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

    .line 106
    iput-object p1, p0, Lcom/perm/kate/PublishDateActivity$3;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$3;->this$0:Lcom/perm/kate/PublishDateActivity;

    invoke-static {v0}, Lcom/perm/kate/PublishDateActivity;->access$100(Lcom/perm/kate/PublishDateActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x2

    .line 112
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x5

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 114
    new-instance v3, Lcom/perm/kate/PublishDateActivity$3$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/PublishDateActivity$3$1;-><init>(Lcom/perm/kate/PublishDateActivity$3;)V

    .line 125
    iget-object p1, p0, Lcom/perm/kate/PublishDateActivity$3;->this$0:Lcom/perm/kate/PublishDateActivity;

    .line 127
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isBrokenSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/perm/kate/PublishDateActivity$3;->this$0:Lcom/perm/kate/PublishDateActivity;

    const v1, 0x1030073

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :cond_0
    move-object v2, p1

    .line 129
    new-instance p1, Landroid/app/DatePickerDialog;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
