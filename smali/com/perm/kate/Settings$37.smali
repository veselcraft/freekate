.class Lcom/perm/kate/Settings$37;
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

    .line 986
    iput-object p1, p0, Lcom/perm/kate/Settings$37;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 989
    iget-object p1, p0, Lcom/perm/kate/Settings$37;->this$0:Lcom/perm/kate/Settings;

    const-string v0, "https://vk.com/pages?oid=-26062647&p=faq"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->showWebActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
