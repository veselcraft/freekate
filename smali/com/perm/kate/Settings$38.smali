.class Lcom/perm/kate/Settings$38;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 994
    iput-object p1, p0, Lcom/perm/kate/Settings$38;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .line 997
    iget-object p1, p0, Lcom/perm/kate/Settings$38;->this$0:Lcom/perm/kate/Settings;

    const-string v0, "http://kate-mobile.reformal.ru"

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
