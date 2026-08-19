.class Lcom/perm/kate/StatsActivity$2;
.super Ljava/lang/Object;
.source "StatsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatsActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/perm/kate/StatsActivity$2;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/perm/kate/StatsActivity$2;->this$0:Lcom/perm/kate/StatsActivity;

    invoke-static {v0}, Lcom/perm/kate/StatsActivity;->access$300(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x2

    .line 116
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x5

    .line 117
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 118
    new-instance v3, Lcom/perm/kate/StatsActivity$2$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/StatsActivity$2$1;-><init>(Lcom/perm/kate/StatsActivity$2;)V

    .line 129
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/perm/kate/StatsActivity$2;->this$0:Lcom/perm/kate/StatsActivity;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
