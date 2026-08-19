.class Lcom/perm/kate/Settings$42$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$42;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$42;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$42;)V
    .locals 0

    .line 1176
    iput-object p1, p0, Lcom/perm/kate/Settings$42$2;->this$1:Lcom/perm/kate/Settings$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1178
    iget-object p1, p0, Lcom/perm/kate/Settings$42$2;->this$1:Lcom/perm/kate/Settings$42;

    iget-object p1, p1, Lcom/perm/kate/Settings$42;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$1700(Lcom/perm/kate/Settings;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1181
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 1183
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1184
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const p2, 0x7f0f0130

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1188
    :cond_0
    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/perm/kate/audio_cache/AudioCache;->PATH_PREF_NAME:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
