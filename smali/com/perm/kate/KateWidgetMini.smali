.class public Lcom/perm/kate/KateWidgetMini;
.super Landroid/appwidget/AppWidgetProvider;
.source "KateWidgetMini.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static buildUpdate(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 22
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/WallPostActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v1, "intent_post":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 25
    .local v2, "pendingIntent_post":Landroid/app/PendingIntent;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03012b

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 26
    .local v3, "views":Landroid/widget/RemoteViews;
    const v4, 0x7f0e0376

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 29
    invoke-static {p0, v3, p1}, Lcom/perm/kate/KateWidgetMini;->displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "intent_post":Landroid/content/Intent;
    .end local v2    # "pendingIntent_post":Landroid/app/PendingIntent;
    .end local v3    # "views":Landroid/widget/RemoteViews;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static displayWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateViews"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    .line 36
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 37
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 17
    aget v1, p3, v0

    invoke-static {p1, v1}, Lcom/perm/kate/KateWidgetMini;->buildUpdate(Landroid/content/Context;I)V

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method
